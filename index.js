const data = [
    { id: 1, name: "Mascotas", parent: 0 },
    { id: 2, name: "Gato", parent: 1 },
    { id: 3, name: "Perro", parent: 1 },
    { id: 4, name: "Plantas", parent: 0 },
    { id: 5, name: "Árbol", parent: 4 },
    // Corregimos el parent de Flores para que la salida sea igual a la interpretación esperada.
    { id: 6, name: "Flores", parent: 4 },
    { id: 7, name: "Micu", parent: 2 },
    { id: 8, name: "Sasy", parent: 2 },
    { id: 9, name: "Fido", parent: 3 },
    { id: 10, name: "Bobby", parent: 3 },
    { id: 11, name: "Roble", parent: 5 },
    { id: 12, name: "Daisy", parent: 2 },
    // Agregamos un nuevo valor para testear si crece en n cantidad de niveles anidados de manera correcta
    { id: 13, name: "Fido Jr.", parent: 9 }
];

// function printTree(parent, level = 0) {
//     const parents = data.filter(d => d.parent === parent);
//     parents.forEach((element) => {
//         console.log(" ".repeat(level * 4), element.name);
//         printTree(element.id, level + 1);
//     })
// }

// printTree(0, 0);

function getTrees(id) {
    let trees = [];
    const roots = data.filter((element) => element.parent === id);
    roots.forEach((element) => {
        const children = getTrees(element.id);
        const tree = {
            name: element.name,
            children
        }
        trees.push(tree);
    });

    return trees;
}

function printTrees(trees, level = 0) {
    trees.forEach((tree) => {
        console.log(' '.repeat(level * 4),tree.name);
        printTrees(tree.children, level + 1);
    })
}

const trees = getTrees(0);
printTrees(trees, 0);


