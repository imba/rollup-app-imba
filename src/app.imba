import './app-button'
var counter = 0
tag app-root
	def incr
		counter++
	def render
		<self>
			<section.box>
				<h2.total>
					if counter is 1
						"{counter} like"
					else
						"{counter} likes"
				<app-button @click.incr> "👍 likes"
				<span.reset @click=(do counter = 0)> "reset"
	### css
	:root {
		--brand: gold;
		--bg: hsl( 248, 65%, 8% );
		--fg: white;
		--gray: whitesmoke;
	}
	
	body {
		background-color: whitesmoke;
		}
	.logo {
		width: 110px;
		height: 35px;
		margin: 30px 0;
		
	}
	.box {
		display: block;
		background-color: var(--fg);
		width: 150px;
		text-align: center;
		padding: 20px;
		border-radius: 5px;
		margin: 0 auto;
		font-family:Arial, Helvetica, sans-serif;
		padding: 10px 10px 30px;
	}
	.box {
		button {
			border: 0;
			padding: 5px;
			border-radius: 5px;
			border: 2px solid var(--gray);
			color: var(--bg);
			background-color: var(--fg);
			&:hover {
				background-color: var(--gray);
				cursor: pointer;
			}
		}
	} 
	.total {
		color: var(--bg);
	}
	.reset {
		margin: .6em 0 0;
		font-size .6em;
		display: block;
		&:hover {
			text-decoration: underline;
			cursor: pointer;
		}
	}
	###