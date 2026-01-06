<script lang="ts">
	import NavBar from '$lib/components/NavBar.svelte';
	import AcknowledgmentsHero from '$lib/components/acknowledgments/AcknowledgmentsHero.svelte';
	import Team from '$lib/components/acknowledgments/Team.svelte';
	import Contributors from '$lib/components/acknowledgments/Contributors.svelte';
	import TechStack from '$lib/components/acknowledgments/TechStack.svelte';
	import ClosingNote from '$lib/components/acknowledgments/ClosingNote.svelte';

	const canonicalUrl = 'https://lunita.me/agradecimientos';
	const pageTitle = 'Agradecimientos y Créditos — Lunita™';
	const pageDescription =
		'Créditos del proyecto Lunita, agradecimientos a Pardalis Labs y a la comunidad que impulsa una IA más cálida e inclusiva.';
	const keywords = [
		'Lunita',
		'Agradecimientos Lunita',
		'IA responsable',
		'Tecnología empática',
		'Pardalis Labs',
		'Groq',
		'Svelte',
		'Tailwind'
	];

	const structuredData = {
		'@context': 'https://schema.org',
		'@type': 'WebPage',
		name: pageTitle,
		description: pageDescription,
		url: canonicalUrl,
		isPartOf: {
			'@type': 'WebSite',
			name: 'Lunita™',
			url: 'https://lunita.me'
		},
		creator: {
			'@type': 'Organization',
			name: 'Pardalis Labs',
			url: 'https://lunita.me'
		},
		contributor: [
			{
				'@type': 'Person',
				name: 'Lunita™',
				jobTitle: 'Inspiración y tono'
			},
			{
				'@type': 'Organization',
				name: 'Comunidad Lunita',
				description: 'Colaboradores, beta testers y aliados del proyecto.'
			}
		],
		about: [
			{
				'@type': 'Thing',
				name: 'Inteligencia artificial responsable'
			},
			{
				'@type': 'Thing',
				name: 'Tecnología empática'
			}
		]
	};

	const structuredDataJson = JSON.stringify(structuredData);
</script>

<svelte:head>
	<title>{pageTitle}</title>
	<meta name="description" content={pageDescription} />
	<meta name="keywords" content={keywords.join(', ')} />
	<meta name="author" content="Pardalis Labs" />
	<meta name="robots" content="index, follow" />
	<link rel="canonical" href={canonicalUrl} />
	<meta property="og:title" content={pageTitle} />
	<meta property="og:description" content={pageDescription} />
	<meta property="og:type" content="website" />
	<meta property="og:url" content={canonicalUrl} />
	<meta property="og:site_name" content="Lunita™" />
	<meta name="twitter:card" content="summary" />
	<meta name="twitter:title" content={pageTitle} />
	<meta name="twitter:description" content={pageDescription} />
	<meta name="twitter:creator" content="@pardalislabs" />
	{@html `<script type="application/ld+json">${structuredDataJson}</script>`}
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
