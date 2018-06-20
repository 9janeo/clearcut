//import React from 'react';

// const Order = () => createReactClass({
// 	getInitialState(props) {
//     return { props } ;
//   },
//   // getDefaultProps() {
//   // 	return []
//   // },
// 	render: function() {
// 		return (
// 			<div className='order'>
// 				<h2 className='title'>List of orders</h2>
// 				<h3 className="status">{this.props.complete}</h3>
// 			</div>
// 		)
// 	}
// })

// import Order from 'Order';

var Orders = createReactClass({
	getInitialState() {
    return { orders: this.props.data } ;
  },
  getDefaultProps() {
  	return []
  },
	render: function() {
		// console.log(this.state.orders);
		// console.log(this.props.data);
		return (
			<div className='orders'>
				<h2 className='title'>List of orders</h2>
				<table className="table table-stripped">
					<thead>
						<tr>
							<th>Date</th>
							<th>Status</th>
							<th>Order Name</th>
							<th>Service List</th>
							<th>Last Updated</th>
							<th colSpan="2">Controls</th>
						</tr>
					</thead>
					<tbody>
						{this.state.orders.map(function(order){
							console.log(order);
							return(
								// <Order key={order.id} order={order} />
								<tr key={order.id}>
									<td>{order.created_at}</td>
									<td>{order.complete}</td>
									<td>{order.ordername}</td>
									<td>{order.servicelist}</td>
									<td>{order.updated_at}</td>
									<td>
										<a className="btn btn-primary" href={"orders/" + order.id}>View</a>
									</td>
								</tr>
							);
						})}						
					</tbody>
				</table>
				<span className='control'>
					<button>New Order</button>
				</span>
			</div>
		)
	}
})
