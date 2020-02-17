### css scoped
p {
	color: red;
}
###

import './app-button'

var counter = 0

tag app-root
	def incr
		counter++

	def render
		<self>
			<p> "Hello there!"
			<p> "Count is {counter}"
			<app-button :click.incr> "increment"