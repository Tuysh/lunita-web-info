<script lang="ts">
	import { onMount } from 'svelte';
	import Contributor from './contributor.svelte';

	let sectionEl: HTMLElement;
	let visible = $state(false);

	const contributors = [
		{ nombre: 'WoodsyRacer', rol: 'Diseño personalidad de Lunita' },
	];

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

<section class="reveal-on-scroll" class:visible bind:this={sectionEl}>
	<h2 class="mb-12 text-center text-[11px] font-bold tracking-[0.3em] text-white/20 uppercase">
		Colaboradores Especiales
	</h2>
	<div class="grid place-content-center grid-cols-{contributors.length <= 2 ? contributors.length : 2} gap-4 md:grid-cols-{contributors.length <= 4 ? contributors.length : 4}">
		{#each contributors as contributor}
			<Contributor nombre={contributor.nombre} rol={contributor.rol} />
		{/each}
	</div>
</section>
