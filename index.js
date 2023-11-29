import epxress from 'express';
const PORT = 3000;
const app = epxress();


app.get('/', (req, res) => {
    console.log({ message: "Welcome to my first node app" });
    return res.json({ message: "Welcome to my first node app" });
})




// listen for requests
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});