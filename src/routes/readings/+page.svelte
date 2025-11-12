<script lang="ts">
	import { readings } from '$lib/data/readings';
</script>

<svelte:head>
	<title>readings</title>
</svelte:head>

<h1 class="page-title">readings</h1>
<p>
	I spend the majority of my free time reading. Here is a list of books I've
	read since I started keeping track a few years ago, sorted by most recently
	read first. Particularly great books are in <span class="green-text">green</span>.
</p>
<p>
	I have about half of these titles in my personal library of physical books.
	I'm also a devoted patron of <a href="https://sfpl.org/" target="_blank">SFPL</a>
	and frequently loan digital books.
</p>

<ul>
	{#each readings as reading}
		<li>
			<a href={reading.link} target="_blank">
				<span class={reading.great_read ? 'green-text' : ''}>{reading.title}</span>
			</a>
			{#if reading.subtitle}
				<span class="reading-subtitle">: {reading.subtitle}</span>
			{/if}
			<p class="reading-author">{reading.author}</p>
		</li>
	{/each}
</ul>

