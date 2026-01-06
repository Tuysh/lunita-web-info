<script lang="ts">
	import { Home } from 'lucide-svelte';
</script>

<div class="reveal stagger-3 flex flex-col items-center justify-center gap-4 sm:flex-row mt-6">
	<a
		href="/"
		class="flex items-center gap-2 rounded-full bg-white px-8 py-4 font-bold text-black shadow-xl shadow-white/5 transition-all hover:bg-gray-200 active:scale-95"
	>
		<Home class="h-5 w-5" />
		Volver al Inicio
	</a>
	<a
		href="/filosofia"
		class="glass flex items-center gap-2 rounded-full px-8 py-4 font-bold transition-all hover:bg-white/10 active:scale-95"
	>
		Ver la Esencia
	</a>
</div>
