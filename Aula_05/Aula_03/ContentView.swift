import SwiftUI

struct ContentView: View {
    @State private var peso: String = ""
    @State private var altura: String = ""
    @State private var imc: Float? = nil
    @State var currentColor = Color.white
    @State var errorMessage: String? = nil

    var body: some View {
        ZStack {
            VStack {
                HStack(spacing: 10.0) {
                    Text("00:02")
                        .multilineTextAlignment(.leading)
                        .padding(.trailing, 200.0)
                    Image(systemName: "ellipsis.rectangle.fill")
                    Image(systemName: "wifi")
                    Image(systemName: "battery.75percent")
                }
                .padding(20)
                .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Text("CALCULADORA DE IMC")
                        .font(.title)
                        .fontWeight(.bold)

                    TextField("Peso em kg", text: $peso)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                        .keyboardType(.decimalPad)
                    
                    TextField("Altura em metros", text: $altura)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                        .keyboardType(.decimalPad)
                    
                    Button(action: calcularIMC) {
                        Text("Calcular IMC")
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                    }
                    
                    // Exibe a mensagem de erro caso ela exista
                    if let errorMessage = errorMessage {
                        Text(errorMessage)
                            .foregroundColor(.red)
                            .padding()
                    }
                }
                .padding()

                VStack {
                    if let imc = imc {
                        Text(specificText(for: imc))
                            .foregroundColor(.black)
                            .cornerRadius(10)
                    }
                }
                
                Spacer()

                Image("table")
                    .resizable()
                    .scaledToFit()
                    .shadow(radius: 10)
                    .edgesIgnoringSafeArea(.all)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .background(currentColor)
    }

    private func calcularIMC() {
        let pesoFloat = Float(peso) ?? 0.0
        let alturaFloat = Float(altura) ?? 0.0

        if pesoFloat <= 0 {
            errorMessage = "O peso deve ser maior que zero."
            imc = nil
        } else if alturaFloat <= 0 {
            errorMessage = "A altura deve ser maior que zero."
            imc = nil
        } else {
            imc = pesoFloat / (alturaFloat * alturaFloat)
            errorMessage = nil
            if let imc = imc {
                currentColor = backgroundColor(for: imc)
            }
        }
    }

    private func backgroundColor(for imc: Float) -> Color {
        switch imc {
        case ..<18.5:
            return Color("baixo peso")
        case 18.5..<24.9:
            return Color("normal")
        case 25..<29.9:
            return Color("sobrepeso")
        case 30...:
            return Color("obesidade")
        default:
            return Color.white
        }
    }

    private func specificText(for imc: Float) -> String {
        switch imc {
        case ..<18.5:
            return "Abaixo do peso"
        case 18.5..<24.9:
            return "Peso normal"
        case 25..<29.9:
            return "Sobrepeso"
        case 30...:
            return "Obesidade"
        default:
            return "Valores inválidos."
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
