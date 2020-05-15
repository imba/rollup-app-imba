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
		--light: white;
		--dark: hsl( 248, 65%, 14% );
	}
	
	body {
		background-color: var(--dark);
	}
	.box {
		display: block;
		background-color: var(--light);
		width: 150px;
		text-align: center;
		padding: 20px;
		border-radius: 5px;
		margin: 0 auto;
		font-family: Arial, Helvetica, sans-serif;
		padding: 10px 10px 30px;
	}
	.box {
		button {
			border: 0;
			padding: 5px;
			border-radius: 5px;
			border: 2px solid var(--dark);
			color: var(--bg);
			background-color: var(--light);
			&:hover {
				background-color: var(--dark);
				cursor: pointer;
				color: var(--light)
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