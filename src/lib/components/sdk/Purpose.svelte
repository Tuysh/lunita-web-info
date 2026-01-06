<script lang="ts">
	import { onMount } from 'svelte';
	import { ShieldCheck, Users, Code2 } from 'lucide-svelte';

	let sectionEl: HTMLElement;

	onMount(() => {
		const observer = new IntersectionObserver(
			(entries) => {
				entries.forEach((entry) => {
					if (entry.isIntersecting) {
						entry.target.classList.add('visible');
					}
				});
			},
			{ threshold: 0.1 }
		);

		observer.observe(sectionEl);

		return () => observer.disconnect();
	});
</script>

<section bind:this={sectionEl} class="reveal-on-scroll mx-auto mb-20 max-w-4xl space-y-12 text-center">
	<h2 class="text-4xl font-bold tracking-tight italic">
		"Humanizando la IA un error a la vez."
	</h2>
	<div class="space-y-6 text-lg leading-relaxed text-white/50">
		<p>
			El propósito de Lunita trasciende el código. Como proyecto de <strong class="text-white/70"
				>Pardalis</strong
			>, buscamos demostrar que una IA con una personalidad definida, incluso si es torpe, genera
			una fricción mucho menor con el usuario que un asistente perfecto pero frío.
		</p>
		<p>
			Construimos herramientas que priorizan la sonrisa sobre la frialdad, fomentando una
			interacción más natural, menos amenazante y, sobre todo, mucho más divertida.
		</p>
	</div>
	<div class="border-t border-white/5 pt-8">
		<p class="mb-4 text-xs tracking-[0.4em] text-white/20 uppercase">Desarrollado por Pardalis</p>
		<div class="flex justify-center gap-12 text-white/10">
			<ShieldCheck class="h-8 w-8" />
			<Users class="h-8 w-8" />
			<Code2 class="h-8 w-8" />
		</div>
	</div>
</section>
