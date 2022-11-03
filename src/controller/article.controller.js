import { pool } from "../db.js";

export const getArticles = async (req, res) => {
  try {
    const [rows] = await pool.query("select * from articles");
    res.json(rows);
  } catch (error) {
    return res.status(500).json({
        message : 'Something goes wrong'
    })
  }
};

//getting data from an article
export const getArticle = async (req, res) => {
  console.log(req.params);
  const [rows] = await pool.query("select * from articles where a_id = ?", [
    req.params.id,
  ]);
  console.log(rows);
  //
  if (rows.length <= 0)
    return res.status(404).json({
      message: "Empleado not found",
    });
  res.json(rows[0]);
};

//inserting a row in the  article table into mysql
export const createArticle = async (req, res) => {
  const { A_nombre, A_image, A_precio, FA_code } = req.body;
  const [rows] = await pool.query(
    "INSERT INTO articles (A_nombre, A_image, A_precio, FA_code) VALUES (?,?,?,?)",
    [A_nombre, A_image, A_precio, FA_code]
  );
  console.log(req.body);
  res.send({
    id: rows.insertId,
    A_nombre,
    A_image,
    A_precio,
    FA_code,
  });
};

//delete
export const deleteArticle = async (req, res) => {
  const [rows] = await pool.query("DELETE FROM articles where a_id = ?", [
    req.params.id,
  ]);
  if (rows.length <= 0)
    return res.status(404).json({
      message: "Empleado not found",
    });
  res.sendStatus(404);
};

//partial or total update
export const updateArticle = async (req, res) => {
  const { id } = req.params;
  const { A_nombre, A_image, A_precio, FA_code } = req.body;

  const [result] = await pool.query(
    "UPDATE articles SET A_nombre = IFNULL(?,A_nombre), A_image  = IFNULL(?,A_image), A_precio = IFNULL(?,A_precio), FA_code= IFNULL(?,FA_code) where a_id =? ",
    [A_nombre, A_image, A_precio, FA_code, id]
  );
  if (result.affectedRows === 0)
    return res.status(404).json({
      message: "article not found",
    });
  const [rows] = await pool.query("SELECT * FROM articles where a_id=?", [id]);
  res.json(rows[0]);
};
