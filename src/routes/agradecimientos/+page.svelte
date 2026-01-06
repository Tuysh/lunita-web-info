<script lang="ts">
	import NavBar from '$lib/components/NavBar.svelte';
	import AcknowledgmentsHero from '$lib/components/acknowledgments/AcknowledgmentsHero.svelte';
	import Team from '$lib/components/acknowledgments/Team.svelte';
	import Contributors from '$lib/components/acknowledgments/Contributors.svelte';
	import TechStack from '$lib/components/acknowledgments/TechStack.svelte';
	import ClosingNote from '$lib/components/acknowledgments/ClosingNote.svelte';
</script>

<svelte:head>
	<title>Agradecimientos — Lunita™</title>
	<meta
		name="description"
		content="El proyecto Lunita es un esfuerzo colectivo de personas que creen en una tecnología más amable."
	/>
</svelte:head>

<div class="overflow-x-hidden selection:bg-purple-500/30">
	<!-- Orbes de fondo minimalistas -->
	<div
		class="orb pointer-events-none fixed top-[-10%] left-[20%] z-0 h-125 w-125 rounded-full bg-white/5 opacity-20 blur-[130px]"
	></div>
	<div
		class="orb pointer-events-none fixed right-[10%] bottom-[0%] z-0 h-100 w-100 rounded-full bg-purple-900/10 opacity-20 blur-[130px]"
	></div>

	<!-- Navegación -->
	<NavBar />

	<main class="relative z-10 px-6 pt-48 pb-40">
		<AcknowledgmentsHero />

		<div class="mx-auto max-w-4xl space-y-24">
			<Team />
			<Contributors />
			<TechStack />
			<ClosingNote />
		</div>

		<footer class="mt-40 text-center">
			<p class="text-[10px] tracking-[0.4em] text-white/10 uppercase">
				© 2026 Pardalis Labs — IA Responsable
			</p>
		</footer>
	</main>
</div>
