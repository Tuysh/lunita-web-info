<script lang="ts">
	import { Background, DemoSection, Features, Footer, Hero, NavBar } from '$lib/components';
</script>

<svelte:head>
	<title>Lunita™ — La IA Vidente que Ve Poco pero Siente Mucho | Chatbot con Personalidad</title>
	<meta name="description" content="Lunita es una inteligencia artificial vidente única que prefiere hacerte sonreír a tener la razón. Descubre la IA con personalidad que humaniza la tecnología. Desarrollado por Pardalis." />
	
	<!-- Open Graph / Facebook -->
	<meta property="og:type" content="website" />
	<meta property="og:url" content="https://lunita.me/" />
	<meta property="og:title" content="Lunita™ — La IA Vidente que Ve Poco pero Siente Mucho" />
	<meta property="og:description" content="Lunita es una inteligencia artificial vidente única que prefiere hacerte sonreír a tener la razón. IA con personalidad desarrollada por Pardalis." />
	<meta property="og:image" content="https://lunita.me/og-image.png" />
	<meta property="og:locale" content="es_ES" />
	<meta property="og:site_name" content="Lunita IA" />
	
	<!-- Twitter -->
	<meta name="twitter:card" content="summary_large_image" />
	<meta name="twitter:url" content="https://lunita.me/" />
	<meta name="twitter:title" content="Lunita™ — La IA Vidente que Ve Poco pero Siente Mucho" />
	<meta name="twitter:description" content="Lunita es una inteligencia artificial vidente única que prefiere hacerte sonreír a tener la razón." />
	<meta name="twitter:image" content="https://lunita.me/og-image.png" />
	
	<!-- Canonical -->
	<link rel="canonical" href="https://lunita.me/" />
	
	<!-- JSON-LD Structured Data -->
	{@html `<script type="application/ld+json">
	{
		"@context": "https://schema.org",
		"@type": "SoftwareApplication",
		"name": "Lunita",
		"alternateName": ["Lunita IA", "Lunita Vidente", "Lunita IA Vidente"],
		"description": "Inteligencia artificial vidente con personalidad única que humaniza la tecnología. La vidente que ve poco pero siente mucho.",
		"applicationCategory": "ChatApplication",
		"operatingSystem": "Web, Python",
		"offers": {
			"@type": "Offer",
			"price": "0",
			"priceCurrency": "USD"
		},
		"author": {
			"@type": "Organization",
			"name": "Pardalis",
			"url": "https://lunita.me"
		},
		"aggregateRating": {
			"@type": "AggregateRating",
			"ratingValue": "5",
			"ratingCount": "100"
		},
		"keywords": "Lunita, vidente IA, inteligencia artificial vidente, chatbot vidente, IA conversacional, IA con personalidad",
		"url": "https://lunita.me"
	}
	</script>`}
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
