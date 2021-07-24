// ContentView.swift

import SwiftUI

struct ContentView: View {
	var body: some View {
		Text(execCli())
			.frame(maxWidth: .infinity, maxHeight: .infinity)
	}
}


struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}

func execCli() -> String {
	let cliTask = Process()
	var executablePath = Bundle.main.bundlePath
	executablePath += "/Contents/Resources/cli"
	print(executablePath)
	let pipe = Pipe()
	cliTask.standardOutput = pipe
	cliTask.launchPath = executablePath
	cliTask.arguments = []
	cliTask.launch()
	let data = pipe.fileHandleForReading.readDataToEndOfFile()
	let output: String = NSString(data: data, encoding: String.Encoding.utf8.rawValue)! as String
	//print(output)
	do {
		let result = try JSONDecoder().decode(Response.self, from: data)
		if result.errorCode != 0 {
			print("Error happend \(result.error)")
			return ""
		}
		return result.users[0].name
	} catch {
		print("There was an error loading user data.")
	}
	return "something went wrong"
}
