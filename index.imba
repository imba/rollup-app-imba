### css scoped
p {
	color: red;
}
###

var counter = 0

tag hello-world
	def incr
		counter++

	def render
		<self>
			<p> "Hello there!!"
			<p> "Count is {counter}"
			<button :click.incr> "increment"


imba.mount <hello-world>