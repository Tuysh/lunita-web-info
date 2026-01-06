<script lang="ts">
	import { onMount } from 'svelte';

	let visible = $state(false);
	let sectionEl: HTMLElement;

	onMount(() => {
		const observer = new IntersectionObserver(
			(entries) => {
				entries.forEach((entry) => {
					if (entry.isIntersecting) visible = true;
				});
			},
			{ threshold: 0.1 }
		);
		observer.observe(sectionEl);
		return () => observer.disconnect();
	});
</script>

<section class="reveal-on-scroll mx-auto mb-44 max-w-5xl px-6" class:visible bind:this={sectionEl}>
	<div class="grid grid-cols-1 items-center gap-20 md:grid-cols-2">
		<div class="space-y-6">
			<h2 class="text-3xl font-bold tracking-tight">Acercando mundos.</h2>
			<p class="leading-relaxed text-white/60">
				El proyecto Lunita nace para humanizar la relación entre usuarios e inteligencias
				artificiales. No buscamos precisión algorítmica; buscamos <strong class="text-white"
					>conexión emocional</strong
				>.
			</p>
			<p class="leading-relaxed text-white/60">
				Sus pronósticos son irracionales e improbables, pero siempre entregados con un tono cálido y
				amable que prefiere una risa a un dato frío.
			</p>
		</div>
		<div class="glass rounded-[3rem] border-purple-500/20 p-12 text-center">
			<div class="mb-6 text-4xl">"</div>
			<blockquote class="text-2xl leading-snug font-medium text-white/90 italic">
				Prefiero fallar al predecir, haciéndote sonreír, antes que acertar con frialdad.
			</blockquote>
			<cite class="mt-6 block text-xs font-bold tracking-widest text-purple-400 uppercase"
				>— Lunita</cite
			>
		</div>
	</div>
</section>
