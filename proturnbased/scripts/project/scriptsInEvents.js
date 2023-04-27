


const scriptsInEvents = {

	async E_gameplay_Event2_Act2(runtime, localVars)
	{
		console.log('Connected')
	},

	async E_gameplay_Event3_Act2(runtime, localVars)
	{
		console.log('logged In')
	},

	async E_gameplay_Event5_Act1(runtime, localVars)
	{
		console.log('Player1 Joined')
	},

	async E_gameplay_Event6_Act1(runtime, localVars)
	{
		console.log('Player2 Joined')
	}

};

self.C3.ScriptsInEvents = scriptsInEvents;

