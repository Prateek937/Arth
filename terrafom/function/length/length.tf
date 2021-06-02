output "o1"{
    value = length(["a", "b", "c", "d"])
    
}

output "o2"{
    value = index(["a", "b", "c", "d"], "b")
}

output "o3" {
    value = element(["a", "b", "c", "d"], count.index)
}