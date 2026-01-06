<script lang="ts">
	import { Footer } from '$lib/components';
	import Navbar from '$lib/components/NavBar.svelte';
	import Closing from '$lib/components/philosophy/Closing.svelte';
	import Origins from '$lib/components/philosophy/Origins.svelte';
	import Personality from '$lib/components/philosophy/Personality.svelte';
	import PhilosophyHero from '$lib/components/philosophy/PhilosophyHero.svelte';
	import Values from '$lib/components/philosophy/Values.svelte';

	// Orb elements for parallax
	let orb1: HTMLElement;
	let orb2: HTMLElement;

	$effect(() => {
		function handleScroll() {
			const scroll = window.pageYOffset;
			if (orb1) orb1.style.transform = `translateY(${scroll * 0.2}px)`;
			if (orb2) orb2.style.transform = `translateY(${scroll * 0.4}px)`;
		}

		window.addEventListener('scroll', handleScroll);
		return () => window.removeEventListener('scroll', handleScroll);
	});
</script>

<svelte:head>
	<title>Esencia — Lunita™</title>
	<meta
		name="description"
		content="Lunita no es solo una IA. Es un compromiso con la imperfección, la calidez y la humanidad en la era digital."
	/>
</svelte:head>

<div class="overflow-x-hidden selection:bg-purple-500/30">
	<!-- Orbes Decorativos con Parallax -->
	<div
		bind:this={orb1}
		class="pointer-events-none fixed top-[-20%] right-[-10%] z-0 h-150 w-150 rounded-full bg-purple-900/20 opacity-40 blur-[100px]"
	></div>
	<div
		bind:this={orb2}
		class="pointer-events-none fixed bottom-[10%] left-[-10%] z-0 h-100 w-100 rounded-full bg-indigo-900/20 opacity-40 blur-[100px]"
	></div>

	<!-- Navegación en modo simple -->
	<Navbar />

	<main class="relative z-10 pt-44 pb-32">
		<PhilosophyHero />
		<Origins />
		<Personality />
		<Values />
		<Closing />
	</main>
</div>

<Footer />
