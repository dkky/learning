var Hello = React.createClass({
  render: function() {
    return (
      <h2> What's Up? </h2>
    );
  }
});

React.render(<Hello/>, document.getElementById("content"))