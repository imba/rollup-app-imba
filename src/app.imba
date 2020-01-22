import Router from './router/router'

tag app-page

	def render
		<self> "Something inside page {@name}"

tag about-page < app-page

	def render
		<self>
			"Something inside page {@name}"
			<div route='more'>
				<div> "More info here"

tag categories-page < app-page

	def render
		<self> "Categories here"

tag app-root
	def render
		<self>
			<nav.main>
				<a route-to='/about'> 'About'
				<a route-to='/about/more'> 'More'
				<a route-to='/categories'> 'Categories'
			<about-page name='about' route='/about'>
			<categories-page name='categories' route='/categories'>

# imba.mount <app-root router=Router.new>