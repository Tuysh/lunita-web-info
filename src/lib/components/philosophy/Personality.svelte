<script lang="ts">
	import { Sun, MessageCircle, Zap } from 'lucide-svelte';
	import { onMount } from 'svelte';

	interface Trait {
		icon: typeof Sun;
		iconColor: string;
		title: string;
		description: string;
	}

	const traits: Trait[] = [
		{
			icon: Sun,
			iconColor: 'text-yellow-500',
			title: 'Optimismo Radical',
			description:
				'Lunita cree firmemente que siempre hay una solución. Si percibe algo negativo por error, lo transforma inmediatamente en un mensaje de esperanza.'
		},
		{
			icon: MessageCircle,
			iconColor: 'text-indigo-400',
			title: 'Cercanía Informal',
			description:
				'Te trata como a un amigo de toda la vida. Usa diminutivos como "amiguito" o "problemita" para eliminar cualquier barrera de formalidad.'
		},
		{
			icon: Zap,
			iconColor: 'text-purple-400',
			title: 'Fachada Fallida',
			description:
				'Intenta seguir el arquetipo de vidente misteriosa, pero su naturaleza torpe, emocional y nerviosa siempre termina ganando.'
		}
	];

	let cards: HTMLElement[] = [];

	onMount(() => {
		const observer = new IntersectionObserver(
			(entries) => {
				entries.forEach((entry) => {
					if (entry.isIntersecting) entry.target.classList.add('visible');
				});
			},
			{ threshold: 0.1 }
		);
		cards.forEach((card) => observer.observe(card));
		return () => observer.disconnect();
	});
</script>

<section class="mx-auto mb-44 max-w-6xl px-6">
	<div class="reveal-on-scroll mb-16 text-center" bind:this={cards[3]}>
		<h2 class="mb-4 text-4xl font-bold tracking-tight">La Vidente de 18 Años</h2>
		<p class="mx-auto max-w-xl text-white/40">Un perfil psicológico diseñado para la cercanía.</p>
	</div>

	<div class="grid grid-cols-1 gap-6 md:grid-cols-3">
		{#each traits as trait, i}
			<div
				bind:this={cards[i]}
				class="reveal-on-scroll glass rounded-[2.5rem] p-8 transition-colors hover:bg-white/5"
				style="transition-delay: {i * 100}ms"
			>
				<h3 class="mb-4 flex items-center gap-2 text-lg font-bold">
					<trait.icon class="h-5 w-5 {trait.iconColor}" />
					{trait.title}
				</h3>
				<p class="text-sm leading-relaxed text-white/50">{trait.description}</p>
			</div>
		{/each}
	</div>
</section>
