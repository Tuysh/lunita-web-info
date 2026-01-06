<script lang="ts">
	let { nombre, rol }: { nombre: string; rol: string } = $props();
</script>

<div class="p-6 text-center">
	<p class="text-[13px] font-medium text-white/80">{nombre}</p>
	<p class="mt-1 text-[10px] text-white/20 uppercase">{rol}</p>
</div>
