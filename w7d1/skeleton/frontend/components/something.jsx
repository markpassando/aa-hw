import React from 'react';

class Something extends React.Component {
  constructor(props) {
    super(props);


  };

  render() {
    const list = this.props.props.USD;
    return (
      <div>
        <h2>Something Cool</h2>
        <p>USD Rate: {list}</p>
      </div>
    );
  }
}

export default Something;
