const names = ["James", "Brennie"];
console.log(names);

names[2] = "Robert";
console.log(names);

names[1] = "Calvin";
console.log(names);

names.splice(0);
console.log(names);

names.splice(0, 0, "Rose");
names.splice(1, 0, "Regal");
console.log(names);