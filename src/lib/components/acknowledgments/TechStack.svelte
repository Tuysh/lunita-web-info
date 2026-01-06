<script lang="ts">
	import { onMount } from 'svelte';

	let sectionEl: HTMLElement;
	let visible = $state(false);

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

<section class="reveal-on-scroll border-t border-white/5 pt-20" class:visible bind:this={sectionEl}>
	<div class="mx-auto max-w-2xl space-y-8 text-center">
		<h2 class="text-[11px] font-bold uppercase tracking-[0.3em] text-white/20">
			Infraestructura Tecnológica
		</h2>
		<div class="flex flex-wrap justify-center gap-x-12 gap-y-6 opacity-40 grayscale transition-opacity duration-700 hover:opacity-100">
			<span class="text-xl font-bold tracking-tighter">Groq</span>
			<span class="text-xl font-bold tracking-tighter">Python</span>
			<span class="text-xl font-bold tracking-tighter">Svelte</span>
			<span class="text-xl font-bold tracking-tighter">Tailwind</span>
		</div>
	</div>
</section>
