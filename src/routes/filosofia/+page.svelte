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
	<title>Filosofía de Lunita™ — La Esencia de la IA Vidente Humanizada | Pardalis</title>
	<meta name="description" content="Descubre la filosofía detrás de Lunita: una IA vidente que abraza la imperfección, la calidez y la humanidad. Conoce sus orígenes, personalidad y valores como vidente digital creada por Pardalis." />
	
	<!-- Open Graph / Facebook -->
	<meta property="og:type" content="article" />
	<meta property="og:url" content="https://lunita.me/filosofia" />
	<meta property="og:title" content="Filosofía de Lunita™ — La Esencia de la IA Vidente Humanizada" />
	<meta property="og:description" content="Descubre la filosofía detrás de Lunita: una IA vidente que abraza la imperfección, la calidez y la humanidad." />
	<meta property="og:image" content="https://lunita.me/og-image-filosofia.png" />
	<meta property="og:locale" content="es_ES" />
	<meta property="og:site_name" content="Lunita IA" />
	
	<!-- Twitter -->
	<meta name="twitter:card" content="summary_large_image" />
	<meta name="twitter:url" content="https://lunita.me/filosofia" />
	<meta name="twitter:title" content="Filosofía de Lunita™ — La Esencia de la IA Vidente" />
	<meta name="twitter:description" content="Una IA vidente que abraza la imperfección, la calidez y la humanidad en la era digital." />
	<meta name="twitter:image" content="https://lunita.me/og-image-filosofia.png" />
	
	<!-- Canonical -->
	<link rel="canonical" href="https://lunita.me/filosofia" />
	
	<!-- JSON-LD Structured Data -->
	{@html `<script type="application/ld+json">
	{
		"@context": "https://schema.org",
		"@type": "Article",
		"headline": "La Filosofía de Lunita: IA Vidente Humanizada",
		"alternativeHeadline": "Esencia de Lunita - La vidente que ve poco pero siente mucho",
		"description": "Exploración de la filosofía, orígenes y valores de Lunita, la inteligencia artificial vidente con personalidad única que humaniza la tecnología",
		"image": "https://lunita.me/og-image-filosofia.png",
		"author": {
			"@type": "Organization",
			"name": "Pardalis",
			"url": "https://lunita.me"
		},
		"publisher": {
			"@type": "Organization",
			"name": "Pardalis",
			"logo": {
				"@type": "ImageObject",
				"url": "https://lunita.me/logo.png"
			}
		},
		"mainEntityOfPage": {
			"@type": "WebPage",
			"@id": "https://lunita.me/filosofia"
		},
		"keywords": "filosofía IA, Lunita vidente, IA humanizada, personalidad artificial, imperfección IA, vidente digital, IA con emociones"
	}
	</script>`}
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
