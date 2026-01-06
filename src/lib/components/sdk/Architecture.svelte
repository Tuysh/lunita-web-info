<script lang="ts">
	import { onMount } from 'svelte';

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

<section bind:this={sectionEl} class="reveal-on-scroll mb-44">
	<div class="grid grid-cols-1 items-center gap-20 lg:grid-cols-2">
		<!-- Code Window -->
		<div class="code-window overflow-hidden rounded-4xl">
			<div class="flex items-center gap-2 border-b border-white/5 bg-white/5 px-6 py-4">
				<div class="h-3 w-3 rounded-full bg-red-500/20"></div>
				<div class="h-3 w-3 rounded-full bg-yellow-500/20"></div>
				<div class="h-3 w-3 rounded-full bg-green-500/20"></div>
				<span class="ml-4 font-mono text-[11px] tracking-widest text-white/20 uppercase"
					>ejemplo_rapido.py</span
				>
			</div>
			<div class="p-8 font-mono text-[13px] leading-relaxed">
				<pre class="overflow-x-auto">
<span class="token-keyword">from</span> lunita <span class="token-keyword">import</span> <span
						class="token-class">Sesion</span
					>, <span class="token-class">ConfigurarEstrellas</span>

<span class="token-comment"># Los astros se alinean</span>
config = <span class="token-class">ConfigurarEstrellas</span>(token=<span class="token-string"
						>"TOKEN_MAGICO"</span
					>)
sesion = <span class="token-class">Sesion</span>(config)

<span class="token-comment"># Consultamos a la vidente</span>
pregunta = <span class="token-string">"¿Lloverá mañana?"</span>
respuesta = sesion.<span class="token-func">predecir</span>(pregunta)

<span class="token-func">print</span>(f<span class="token-string"
						>"🔮 Lunita: &#123;respuesta&#125;"</span
					>)</pre>
			</div>
		</div>

		<!-- Description -->
		<div class="space-y-8">
			<h2 class="text-4xl leading-tight font-bold tracking-tight">
				Arquitectura de <br /> alta velocidad.
			</h2>
			<p class="leading-relaxed text-white/60">
				Lunita Mini utiliza el motor de inferencia de <strong class="text-white/80">Groq</strong>
				para lograr respuestas casi instantáneas. Hemos optimizado la carga de tokens (~600 vs ~3000
				de la versión estándar) para reducir costos sin perder la esencia.
			</p>
			<div class="grid grid-cols-2 gap-8">
				<div>
					<span class="mb-1 block text-3xl font-bold text-purple-400">~600</span>
					<span class="text-[11px] font-bold tracking-widest text-white/30 uppercase"
						>Tokens/Msj</span
					>
				</div>
				<div>
					<span class="mb-1 block text-3xl font-bold text-blue-400">GPT-OSS</span>
					<span class="text-[11px] font-bold tracking-widest text-white/30 uppercase"
						>Modelos Base</span
					>
				</div>
			</div>
		</div>
	</div>
</section>

<style>
	/* Code window styling */
	.code-window {
		background: #0d0d0d;
		border: 1px solid rgba(255, 255, 255, 0.1);
		box-shadow: 0 30px 60px rgba(0, 0, 0, 0.5);
	}

	/* Syntax Highlighting */
	.token-comment {
		color: #6a9955;
	}
	.token-keyword {
		color: #c586c0;
	}
	.token-string {
		color: #ce9178;
	}
	.token-func {
		color: #dcdcaa;
	}
	.token-class {
		color: #4ec9b0;
	}
</style>
