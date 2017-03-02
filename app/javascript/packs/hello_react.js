// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React from 'react'
import ReactDOM from 'react-dom'

class Hello extends React.Component {
  render() {
    return <h1 class="display-3">Hello {this.props.name}!</h1>
  }
}

document.addEventListener("DOMContentLoaded", e => {
  let vision = document.getElementById('vision')
  ReactDOM.render(<Hello name="React" />, document.body.appendChild(vision))
})
