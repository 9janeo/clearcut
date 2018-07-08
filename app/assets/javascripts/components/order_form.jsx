var OrderForm = createReactClass({
	getInitialState(){
		return {date: '', complete: '', ordername: '', servicelist: '', updated_at: ''}
	},
	handleValueChange(e){
		valueName = e.target.name;
		setState ({valueName: e.target.value}); //#{valueName}: e.target.value;
	},
	valid(){
		state.date && state.ordername && state.complete && state.servicelist
	},
	handleSubmit(e){
		e.preventDefault();
		console.log(this.state);
		//  $.post '', {order: state}, (data){
		// 	props.handleNewOrder data;
		// 	setState(getInitialState());
		// 	'JSON';
		// }
	},
	render: function(){
		return(
			<form className='form_inline' onSubmit='handleSubmit'>
				<div className='form-group'>
					<input type='date' className='form-control' placeholder='date' name='date' value={state.date} onChange='handleValueChange' />
					<input type='boolean' className='form-control' placeholder='complete' name='complete' value={state.complete} onChange='handleValueChange' />
					<input type='text' className='form-control' placeholder='ordername' name='ordername' value={state.ordername} onChange='handleValueChange' />
					<input type='text' className='form-control' placeholder='servicelist' name='servicelist' value={state.date} onChange='handleValueChange' />
					<input type='date' className='form-control' placeholder='updated_at' name='updated_at' value={state.date} onChange='handleValueChange' />				
					<button type='submit' className="btn btn-primary" disabled={!valid()}>Create Order</button>
					<span>
						<a className="btn btn-primary" href={"orders/" + this.props.order.id}>View</a>
					</span>
				</div>
			</form>
		)
	}
})
