<script lang="ts">
	import { Sparkles } from 'lucide-svelte';
</script>

<section class="mx-auto max-w-4xl px-6 pt-56 pb-32 text-center">
	<div
		class="reveal stagger-1 glass mb-8 inline-flex items-center gap-2 rounded-full px-4 py-1.5 text-[12px] font-bold tracking-widest text-purple-300 uppercase"
	>
		<Sparkles class="h-3.5 w-3.5" />
		SDK LUNITA MINI v0.2
	</div>

	<h1
		class="reveal stagger-2 mb-8 bg-linear-to-b from-white to-white/40 bg-clip-text text-6xl leading-[0.85] font-extrabold tracking-tighter text-transparent md:text-8xl"
	>
		Optimista.<br />Torpe. <span class="text-purple-500">Mágica.</span>
	</h1>

	<p
		class="reveal stagger-3 mx-auto mb-12 max-w-2xl text-xl leading-relaxed text-white/50 md:text-2xl"
	>
		La vidente que prefiere verte sonreír a tener la razón.
	</p>

	<div class="reveal stagger-3 flex flex-col justify-center gap-4 sm:flex-row">
		<button
			class="group flex items-center justify-center gap-2 rounded-full bg-purple-600 px-8 py-4 font-bold transition-all hover:shadow-[0_0_40px_rgba(147,51,234,0.4)] active:scale-95"
		>
			Hablar con Lunita <Sparkles class="h-5 w-5" />
		</button>
		<a
			href="https://github.com/Tuysh/lunita-mini"
			target="_blank"
			class="glass rounded-full px-8 py-4 font-bold transition-all hover:bg-white/10 active:scale-95"
		>
			GitHub
		</a>
	</div>
</section>
