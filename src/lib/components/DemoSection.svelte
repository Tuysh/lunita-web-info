<script lang="ts">
	import { onMount } from 'svelte';

	let visible = $state(false);
	let sectionEl: HTMLElement;

	onMount(() => {
		const observer = new IntersectionObserver(
			(entries) => {
				entries.forEach((entry) => {
					if (entry.isIntersecting) {
						visible = true;
					}
				});
			},
			{ threshold: 0.1 }
		);

		observer.observe(sectionEl);

		return () => observer.disconnect();
	});
</script>

<section id="demo" class="mb-40 px-6" class:visible bind:this={sectionEl}>
	<div
		class="reveal-on-scroll mx-auto max-w-4xl rounded-[2.5rem] bg-linear-to-b from-white/10 to-transparent p-1 shadow-2xl"
		class:visible
	>
		<div class="overflow-hidden rounded-[2.4rem] border border-white/5 bg-[#050505]">
			<!-- Window Header -->
			<div class="flex items-center border-b border-white/5 bg-white/5 px-6 py-4">
				<div class="flex gap-2">
					<div class="h-3 w-3 rounded-full bg-red-500/50"></div>
					<div class="h-3 w-3 rounded-full bg-yellow-500/50"></div>
					<div class="h-3 w-3 rounded-full bg-green-500/50"></div>
				</div>
			</div>

			<!-- Chat Content -->
			<div class="flex min-h-100 flex-col justify-end space-y-6 p-8">
				<div class="chat-msg flex gap-4">
					<div
						class="flex h-10 w-10 shrink-0 items-center justify-center rounded-full bg-purple-600"
					>
						🔮
					</div>
					<div class="glass max-w-[80%] rounded-3xl rounded-tl-sm px-6 py-4">
						<p class="text-[15px]">
							¡Hola amiguito! ✨ Veo que hoy... mmm... ¡vas a encontrar una moneda en un zapato! O
							tal vez es solo una piedrita... ¡pero la intención cuenta!
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
