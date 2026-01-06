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

<section class="reveal-on-scroll" class:visible bind:this={sectionEl}>
	<h2 class="mb-12 text-center text-[11px] font-bold tracking-[0.3em] text-white/20 uppercase">
		Equipo Fundador
	</h2>
	<div class="grid grid-cols-1 gap-8 md:grid-cols-2">
		<div class="glass-soft flex items-center gap-6 rounded-3xl border-white/5 p-8">
			<div
				class="flex h-14 w-14 items-center justify-center rounded-full bg-linear-to-br from-white/10 to-transparent text-lg font-bold"
			>
				P
			</div>
			<div>
				<h3 class="text-lg font-bold">Pardalis</h3>
				<p class="text-subtle text-xs italic">Arquitectura y Visión</p>
			</div>
		</div>
		<div class="glass-soft flex items-center gap-6 rounded-3xl border-white/5 p-8">
			<div
				class="flex h-14 w-14 items-center justify-center rounded-full bg-linear-to-br from-purple-500/20 to-transparent text-lg font-bold"
			>
				L
			</div>
			<div>
				<h3 class="text-lg font-bold">Lunita</h3>
				<p class="text-subtle text-xs italic">La inspiración torpe</p>
			</div>
		</div>
	</div>
</section>
