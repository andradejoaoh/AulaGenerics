import Foundation

var intA = 1
var intB = 2
let maiorInt = maior(intA, intB)

var doubleA = Double.pi
var doubleB = 3.14
let maiorDouble =  maior(doubleA, doubleB)

var tratorA = AgriculturalMachinery(size: 12)
var tratorB = AgriculturalMachinery(size: 783)
let maiorTrator = maior(tratorA, tratorB)

var pilha = Pilha<Int>()

pilha.push(intA)
pilha.push(intB)

//TODO: Fazer um método que recebe um Array e um elemento, retorna um Bool dizendo se o elemento se encontra no Array
func isOnList<T: Equatable>(array: Array<T>, element: T) -> Bool{
    return array.contains(element)
}

//TODO: Extensão de Array contendo uma função que retorna a soma de todos os elementos, independente de qual o valor numérico
extension Array where Element : Numeric {
    func sum() -> Element{
        var soma = Element.zero
        
        for element in self {
            soma += element
        }
        return soma
    }
}


//TODO: Fazer um método que recebe 2 Arrays e retorna um Int referente a quantidade de elementos presentes em ambos os Arrays
    //BONUS TODO: Fazer o método acima receber N arrays
func isComun<T: Hashable>(firstArray: [T], secondArray: [T]) -> Int{
    let firstSet: Set<T> = Set(firstArray)
    let secondSet: Set<T> = Set(secondArray)
    
    return firstSet.intersection(secondSet).count
    }

func isComunAnyElements<T: Hashable>(arrays: [T]...) -> Int{
    var result = 0
    for numbersInArray in 0..<arrays.first!.count{
        for array in arrays {
            if !array.contains(arrays[0][numbersInArray]){
                break;
            }
        }
        result += 1
    }
    return result
}

