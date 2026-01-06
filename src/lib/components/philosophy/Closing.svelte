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

    function eastergg() {
        alert("¡Has encontrado la luna oculta! 🌕✨");
    }
</script>

<section class="reveal-on-scroll px-6 text-center" class:visible bind:this={sectionEl}>
	<p class="mb-4 text-[11px] tracking-[0.4em] text-white/20 uppercase">Proyecto Lunita</p>
	<h2 class="mb-8 text-3xl font-bold tracking-tight">Un paso más cerca de lo humano.</h2>
	<button
		class="mx-auto flex h-12 w-12 cursor-pointer items-center justify-center rounded-2xl bg-white/5 transition-transform hover:scale-110"
		onclick={eastergg}
	>
		<span class="text-xl" >🌕</span>
	</button>
</section>
