import express from 'express'

const app = express();
app.listen(4000, () => {
	console.log('Express Server listening on port 4000')
})