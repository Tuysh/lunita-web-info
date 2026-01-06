<script lang="ts">
	import { Smile, Zap, Heart } from 'lucide-svelte';
	import { onMount } from 'svelte';

	interface Feature {
		icon: typeof Smile;
		iconColor: string;
		title: string;
		description: string;
	}

	const features: Feature[] = [
		{
			icon: Smile,
			iconColor: 'text-purple-400',
			title: 'Sonrisas vs. Datos',
			description: 'Priorizamos la calidez humana. Si buscas frialdad, usa una calculadora.'
		},
		{
			icon: Zap,
			iconColor: 'text-indigo-400',
			title: 'Mini & Veloz',
			description: 'Respuestas breves de ~600 tokens. Carisma puro en formato compacto.'
		},
		{
			icon: Heart,
			iconColor: 'text-pink-400',
			title: 'Faro de Esperanza',
			description: 'Incluso en el peor error, Lunita encontrará algo positivo que decir.'
		}
	];

	let cards: HTMLElement[] = [];

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

		cards.forEach((card) => observer.observe(card));

		return () => observer.disconnect();
	});
</script>

<section id="filosofia" class="mx-auto mb-40 max-w-6xl px-6">
	<div class="grid grid-cols-1 gap-6 md:grid-cols-3">
		{#each features as feature, i}
			<div
				bind:this={cards[i]}
				class="reveal-on-scroll hover-card glass rounded-4xl p-8"
				style="transition-delay: {i * 100}ms"
			>
				<feature.icon class="mb-6 h-8 w-8 {feature.iconColor}" />
				<h3 class="mb-3 text-xl font-bold">{feature.title}</h3>
				<p class="text-sm text-white/50">{feature.description}</p>
			</div>
		{/each}
	</div>
</section>
