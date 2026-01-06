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

<section class="reveal-on-scroll pt-20 text-center" class:visible bind:this={sectionEl}>
	<p class="mx-auto max-w-lg text-sm leading-relaxed text-subtle italic">
		"Gracias por creer en la magia de los errores. Este proyecto sigue vivo gracias a tu curiosidad."
	</p>
	<div class="mt-12 flex justify-center gap-4">
		<div class="h-1.5 w-1.5 rounded-full bg-white/10"></div>
		<div class="h-1.5 w-1.5 rounded-full bg-white/20"></div>
		<div class="h-1.5 w-1.5 rounded-full bg-white/10"></div>
	</div>
</section>
