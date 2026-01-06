<script lang="ts">
	import { Menu, X } from 'lucide-svelte';

	let scrolled = $state(false);
	let menuOpen = $state(false);

	function handleScroll() {
		scrolled = window.scrollY > 20;
	}

	function toggleMenu() {
		menuOpen = !menuOpen;
	}

	function closeMenu() {
		menuOpen = false;
	}

	$effect(() => {
		window.addEventListener('scroll', handleScroll);
		return () => window.removeEventListener('scroll', handleScroll);
	});
</script>

<!-- Navigation -->
<nav
	class="apple-ease fixed top-0 z-100 flex h-20 w-full items-center transition-all duration-500"
	class:scrolled
>
	<div class="mx-auto flex w-full max-w-6xl items-center justify-between px-6">
		<!-- Logo -->
		<a href="/" class="group flex items-center gap-2 text-xl font-bold tracking-tighter">
			<div
				class="apple-ease flex h-8 w-8 items-center justify-center rounded-lg bg-linear-to-br from-purple-500 to-indigo-600 shadow-lg transition-transform group-hover:scale-110"
			>
				<span class="text-sm">🔮</span>
			</div>
			<span class="transition-opacity group-hover:opacity-80">Lunita</span>
		</a>

		<!-- Desktop Menu -->
		<div class="glass hidden items-center gap-1 rounded-full px-1 py-1 md:flex">
			<a
				href="#demo"
				class="apple-ease rounded-full px-4 py-1.5 text-[13px] font-medium text-white/60 transition-all hover:bg-white/5 hover:text-white"
				>Demo</a
			>
			<a
				href="/sdk"
				class="apple-ease rounded-full px-4 py-1.5 text-[13px] font-medium text-white/60 transition-all hover:bg-white/5 hover:text-white"
				>SDK</a
			>
			<a
				href="/filosofia"
				class="apple-ease rounded-full px-4 py-1.5 text-[13px] font-medium text-white/60 transition-all hover:bg-white/5 hover:text-white"
				>Esencia</a
			>
		</div>

		<!-- CTA & Mobile Toggle -->
		<div class="flex items-center gap-4">
			<button
				class="apple-ease hidden rounded-full bg-white px-5 py-2 text-[13px] font-bold text-black shadow-lg transition-all hover:bg-gray-200 active:scale-95 sm:block"
			>
				Probar Mini
			</button>
			<button
				onclick={toggleMenu}
				class="glass flex h-10 w-10 items-center justify-center rounded-full transition-transform active:scale-90 md:hidden"
			>
				{#if menuOpen}
					<X class="h-5 w-5" />
				{:else}
					<Menu class="h-5 w-5" />
				{/if}
			</button>
		</div>
	</div>
</nav>

<!-- Mobile Menu Overlay -->
<div
	class="mobile-menu glass fixed inset-0 z-90 flex flex-col gap-8 px-8 pt-32 md:hidden"
	class:open={menuOpen}
>
	<a onclick={closeMenu} href="#demo" class="text-3xl font-bold tracking-tight">Demo</a>
	<a onclick={closeMenu} href="#sdk" class="text-3xl font-bold tracking-tight text-white/60">SDK</a>
	<a onclick={closeMenu} href="#filosofia" class="text-3xl font-bold tracking-tight text-white/60"
		>Esencia</a
	>
	<div class="mt-auto pb-12">
		<button class="w-full rounded-2xl bg-white py-4 text-lg font-bold text-black"
			>Comenzar ahora</button
		>
	</div>
</div>
