<script lang="ts">
	import Crystal from '$lib/components/notfound/Crystal.svelte';
	import Message from '$lib/components/notfound/Message.svelte';
	import Actions from '$lib/components/notfound/Actions.svelte';
	import NotFoundFooter from '$lib/components/notfound/NotFoundFooter.svelte';

	let orb1: HTMLElement;
	let orb2: HTMLElement;

	$effect(() => {
		function handleMouseMove(event: MouseEvent) {
			const x = (window.innerWidth / 2 - event.pageX) / 50;
			const y = (window.innerHeight / 2 - event.pageY) / 50;

			const orbs = [orb1, orb2].filter(Boolean) as HTMLElement[];
			orbs.forEach((orb, i) => {
				const factor = (i + 1) * 0.5;
				orb.style.transform = `translate(${x * factor}px, ${y * factor}px)`;
			});
		}

		window.addEventListener('mousemove', handleMouseMove);
		return () => window.removeEventListener('mousemove', handleMouseMove);
	});
</script>

<svelte:head>
	<title>404 — ¿Perdido en el Cosmos? — Lunita™</title>
	<meta
		name="description"
		content="No encontramos esta página, pero Lunita sigue buscando en el cosmos."
	/>
</svelte:head>

<div class="flex min-h-screen items-center justify-center overflow-hidden bg-black p-6">
	<!-- Elementos de fondo -->
	<div
		bind:this={orb1}
		class="orb pointer-events-none fixed -top-20 -left-20 z-0 h-125 w-125 rounded-full bg-purple-900/30 blur-[120px]"
	></div>
	<div
		bind:this={orb2}
		class="orb pointer-events-none fixed -right-20 -bottom-20 z-0 h-100 w-100 rounded-full bg-indigo-900/20 blur-[120px]"
	></div>

	<main class="relative z-10 w-full max-w-2xl text-center">
		<Crystal />
		<Message />
		<Actions />
		<NotFoundFooter />
	</main>
</div>
