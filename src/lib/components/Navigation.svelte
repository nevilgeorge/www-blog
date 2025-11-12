<script lang="ts">
	import { page } from '$app/stores';
	import { navigation } from '$lib/data/navigation';
</script>

<div class="pure-u-1-5 navbar">
	<ul>
		{#each navigation as item}
			<li>
				<a href={item.link} class={$page.url.pathname === item.link ? 'selected' : ''}>
					{item.name}
				</a>
			</li>
		{/each}
	</ul>
</div>

