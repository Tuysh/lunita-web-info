<script lang="ts">
	import { Terminal, ExternalLink } from 'lucide-svelte';
</script>

<section class="mb-32 max-w-4xl">
	<h1 class="mb-8 text-5xl leading-[0.9] font-extrabold tracking-tighter md:text-7xl">
		Construye experiencias <br /> con <span class="text-purple-500">carisma.</span>
	</h1>
	<p class="mb-12 text-xl leading-relaxed font-light text-white/50 md:text-2xl">
		Lunita Mini es un SDK para Python diseñado para integrar una personalidad vidente y optimista
		en tus aplicaciones en menos de 5 líneas de código.
	</p>
	<div class="flex flex-wrap gap-4">
		<div class="glass flex items-center gap-3 rounded-2xl px-5 py-3">
			<Terminal class="h-5 w-5 text-purple-400" />
			<span class="font-mono text-sm">pip install lunita-mini</span>
		</div>
		<a
			href="https://github.com/Tuysh/lunita-mini"
			target="_blank"
			rel="noopener noreferrer"
			class="apple-ease flex items-center gap-2 rounded-2xl bg-purple-600 px-6 py-3 font-bold text-white shadow-xl transition-all hover:bg-purple-500 active:scale-95"
		>
			Ver en GitHub <ExternalLink class="h-4 w-4" />
		</a>
	</div>
</section>
