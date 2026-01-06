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
	<title>SDK Lunita Mini™ — SDK Python para IA Vidente | Integra Personalidad en tu App</title>
	<meta name="description" content="Lunita Mini SDK para Python. Integra una IA vidente con personalidad en tus aplicaciones en menos de 5 líneas de código. Motor Groq, ~600 tokens, respuestas instantáneas. Por Pardalis." />
	
	<!-- Open Graph / Facebook -->
	<meta property="og:type" content="website" />
	<meta property="og:url" content="https://lunita.me/sdk" />
	<meta property="og:title" content="SDK Lunita Mini™ — SDK Python para IA Vidente" />
	<meta property="og:description" content="Integra una IA vidente con personalidad en tus aplicaciones Python en menos de 5 líneas de código. Motor Groq, respuestas instantáneas." />
	<meta property="og:image" content="https://lunita.me/og-image-sdk.png" />
	<meta property="og:locale" content="es_ES" />
	<meta property="og:site_name" content="Lunita IA" />
	
	<!-- Twitter -->
	<meta name="twitter:card" content="summary_large_image" />
	<meta name="twitter:url" content="https://lunita.me/sdk" />
	<meta name="twitter:title" content="SDK Lunita Mini™ — SDK Python para IA Vidente" />
	<meta name="twitter:description" content="Integra una IA vidente con personalidad en tus apps Python. Motor Groq, ~600 tokens." />
	<meta name="twitter:image" content="https://lunita.me/og-image-sdk.png" />
	
	<!-- Canonical -->
	<link rel="canonical" href="https://lunita.me/sdk" />
	
	<!-- JSON-LD Structured Data -->
	{@html `<script type="application/ld+json">
	{
		"@context": "https://schema.org",
		"@type": "SoftwareSourceCode",
		"name": "Lunita Mini SDK",
		"alternateName": ["lunita-mini", "Lunita SDK Python"],
		"description": "SDK Python para integrar una IA vidente con personalidad en aplicaciones. Usa motor Groq para respuestas ultra rápidas con ~600 tokens por mensaje.",
		"programmingLanguage": {
			"@type": "ComputerLanguage",
			"name": "Python"
		},
		"runtimePlatform": "Python 3.8+",
		"codeRepository": "https://github.com/Tuysh/lunita-mini",
		"author": {
			"@type": "Organization",
			"name": "Pardalis",
			"url": "https://lunita.me"
		},
		"license": "https://opensource.org/licenses/MIT",
		"keywords": "Python SDK, IA vidente, Lunita SDK, Groq, chatbot SDK, IA conversacional, pip install lunita-mini"
	}
	</script>`}
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
