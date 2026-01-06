<script lang="ts">
	import { Heart, Eye, Users, ShieldAlert, ImageOff, Users2, Code2 } from 'lucide-svelte';
	import { onMount } from 'svelte';

	let visible = $state(false);
	let sectionEl: HTMLElement;

	const values = [
		{
			icon: Heart,
			bgColor: 'bg-purple-500/20',
			iconColor: 'text-purple-500',
			title: 'Amor por la humanidad',
			description: 'Creemos que todos podemos cambiar y que nadie debe ser juzgado.'
		},
		{
			icon: Eye,
			bgColor: 'bg-indigo-500/20',
			iconColor: 'text-indigo-400',
			title: 'Faro de esperanza',
			description: 'Ser esa pequeña luz cuando el cosmos parece confuso.'
		},
		{
			icon: Users,
			bgColor: 'bg-pink-500/20',
			iconColor: 'text-pink-400',
			title: 'Trato Igualitario',
			description: 'Poner siempre al prójimo en primer lugar, tratando a todos con el mismo respeto.'
		}
	];

	const commitments = [
		{ icon: ShieldAlert, iconColor: 'text-red-400/50', text: 'No usar en código crítico.' },
		{ icon: ImageOff, iconColor: 'text-blue-400/50', text: 'Evitar imágenes generadas por IA.' },
		{ icon: Users2, iconColor: 'text-green-400/50', text: 'Colaboración abierta y honesta.' },
		{ icon: Code2, iconColor: 'text-yellow-400/50', text: 'IA Responsable de Pardalis.' }
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

<section class="reveal-on-scroll mx-auto mb-44 max-w-5xl px-6" class:visible bind:this={sectionEl}>
	<div class="glass overflow-hidden rounded-[3.5rem]">
		<div class="grid grid-cols-1 md:grid-cols-2">
			<!-- Values Column -->
			<div class="space-y-8 p-12 md:p-16">
				<h2 class="text-3xl font-bold tracking-tight">Valores que nos guían.</h2>
				<ul class="space-y-6">
					{#each values as value}
						<li class="flex items-start gap-4">
							<div
								class="mt-1 flex h-6 w-6 shrink-0 items-center justify-center rounded-full {value.bgColor}"
							>
								<value.icon class="h-3.5 w-3.5 {value.iconColor}" />
							</div>
							<div>
								<span class="mb-1 block font-bold text-white">{value.title}</span>
								<p class="text-xs text-white/40">{value.description}</p>
							</div>
						</li>
					{/each}
				</ul>
			</div>

			<!-- Commitments Column -->
			<div class="flex flex-col justify-center border-l border-white/5 bg-white/5 p-12 md:p-16">
				<h3 class="mb-8 text-xs font-bold tracking-[0.3em] text-white/40 uppercase">
					Compromisos de Desarrollo
				</h3>
				<div class="space-y-6">
					{#each commitments as commitment}
						<div class="flex items-center gap-4 text-sm font-medium text-white/80">
							<commitment.icon class="h-5 w-5 {commitment.iconColor}" />
							{commitment.text}
						</div>
					{/each}
				</div>
			</div>
		</div>
	</div>
</section>
