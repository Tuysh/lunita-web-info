<script lang="ts">
	import Navbar from '$lib/components/NavBar.svelte';
	import { SDKHero, SDKComponents, Architecture, Purpose } from '$lib/components/sdk';

	// Orb elements for parallax
	let orb1: HTMLElement;
	let orb2: HTMLElement;

	$effect(() => {
		function handleScroll() {
			const scroll = window.pageYOffset;
			if (orb1) orb1.style.transform = `translateY(${scroll * 0.15}px)`;
			if (orb2) orb2.style.transform = `translateY(${scroll * 0.3}px)`;
		}

		window.addEventListener('scroll', handleScroll);
		return () => window.removeEventListener('scroll', handleScroll);
	});
</script>

<svelte:head>
	<title>SDK — Lunita™</title>
	<meta
		name="description"
		content="Lunita Mini es un SDK para Python diseñado para integrar una personalidad vidente y optimista en tus aplicaciones en menos de 5 líneas de código."
	/>
	<link rel="preconnect" href="https://fonts.googleapis.com" />
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="anonymous" />
	<link
		href="https://fonts.googleapis.com/css2?family=JetBrains+Mono:wght@400;500&display=swap"
		rel="stylesheet"
	/>
</svelte:head>

<div class="overflow-x-hidden selection:bg-purple-500/30">
	<!-- Orbes Decorativos con Parallax -->
	<div
		bind:this={orb1}
		class="orb top-[-10%] right-[-10%] h-125 w-125 animate-pulse bg-purple-900/30"
	></div>
	<div bind:this={orb2} class="orb bottom-[-10%] left-[-10%] h-100 w-100 bg-blue-900/20"></div>

	<Navbar />

	<main class="relative z-10 mx-auto max-w-7xl px-8 pt-44 pb-32">
		<SDKHero />
		<SDKComponents />
		<Architecture />
		<Purpose />
	</main>
</div>
