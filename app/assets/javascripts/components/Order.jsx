var Order = createReactClass({
	render: function(){
		// console.log(this);
		var order = this.props.data;
		return(
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
					<tr>
						<td>{order.created_at}</td>
						<td>{order.complete}</td>
						<td>{order.ordername}</td>
						<td>{order.servicelist}</td>
						<td>{order.updated_at}</td>
						<td scope="col">
							<a className="btn btn-success" href={order.id}>Edit</a>
						</td>
						<td scope="col">
							<a className="btn btn-danger" href={order.id}>Delete</a>
						</td>
					</tr>
				</tbody>
			</table>
		)
	}
})
