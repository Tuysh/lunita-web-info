<script lang="ts">
	import { Settings, MessageSquare, Sparkles } from 'lucide-svelte';

	const sdkComponents = [
		{
			Icon: Settings,
			iconColor: 'text-purple-400',
			bgColor: 'bg-purple-500/10',
			title: 'ConfigurarEstrellas',
			description:
				'La puerta de enlace al cosmos. Administra el token de API, define el modo de inteligencia ("normal" o "avanzado") y carga el historial previo de mensajes.',
			label: 'Parámetros clave',
			items: ['token (str)', 'modo ("normal" | "avanzado")', 'historial (list)']
		},
		{
			Icon: MessageSquare,
			iconColor: 'text-blue-400',
			bgColor: 'bg-blue-500/10',
			title: 'Sesion & Asíncrona',
			description:
				'El orquestador de diálogos. `Sesion` para flujos lineales y `SesionAsincrona` para entornos de alto rendimiento como bots o servidores web.',
			label: 'Métodos principales',
			items: ['predecir(entrada: str)', 'historial (property)']
		},
		{
			Icon: Sparkles,
			iconColor: 'text-pink-400',
			bgColor: 'bg-pink-500/10',
			title: 'ErroresMagicos',
			description:
				'Transforma fallos técnicos en momentos de conexión. Traduce errores HTTP en mensajes graciosos alineados con la personalidad de Lunita.',
			label: 'Traducción automática',
			items: ['401: Token olvidado', '429: Mareo cósmico', '500: Bola sin pilas']
		}
	];
</script>

<section class="mb-44 grid grid-cols-1 gap-6 md:grid-cols-3">
	{#each sdkComponents as component}
		{@const IconComponent = component.Icon}
		<div
			class="glass apple-ease flex flex-col rounded-[2.5rem] p-8 transition-colors hover:bg-white/5"
		>
			<div
				class="mb-8 flex h-12 w-12 items-center justify-center rounded-2xl {component.bgColor}"
			>
				<IconComponent class="h-6 w-6 {component.iconColor}" />
			</div>
			<h3 class="mb-4 text-xl font-bold">{component.title}</h3>
			<p class="mb-8 grow text-sm leading-relaxed text-white/50">
				{component.description}
			</p>
			<div class="mt-auto space-y-2">
				<div
					class="flex justify-between text-[10px] font-medium tracking-widest text-white/20 uppercase"
				>
					<span>{component.label}</span>
				</div>
				<ul class="space-y-1 text-[12px] text-white/40">
					{#each component.items as item}
						<li>• {item}</li>
					{/each}
				</ul>
			</div>
		</div>
	{/each}
</section>
