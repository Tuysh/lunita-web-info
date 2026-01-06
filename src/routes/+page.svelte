<script lang="ts">
	import { Background, DemoSection, Features, Footer, Hero, NavBar } from '$lib/components';
</script>

<svelte:head>
	<title>Lunita — Tu Vidente Torpe</title>
	<meta name="description" content="La vidente que prefiere verte sonreír a tener la razón." />
</svelte:head>

<div class="overflow-x-hidden selection:bg-purple-500/30">
	<!-- Background Elements -->
	<Background />

	<!-- Navigation -->
	<NavBar />

	<!-- Main Content -->
	<main class="relative z-10">
		<Hero />
		<DemoSection />
		<Features />
		<Footer />
	</main>
</div>
