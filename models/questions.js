export default class Question {
  constructor(db) {
    this.db = db;
  }

  //create a new question
  create(values) {
    const sql = "INSERT INTO allQuestions (questionTitle, questionDescription) VALUES(${questionTitle}, ${questionDescription}) RETURNING *";
    return this.db.one(sql, values);
  }
  // find question by id
  findById(id) {
    const sql = "SELECT * FROM questions WHERE id = $1";
    return this.db.one(sql, values);
  }
  //delete question;
  remove(id) {
    const sql = "DELETE FROM questions WHERE id = $1 RETURNING *";
    return this.db.oneOrNone(sql, id);
  }
  //returns all questions belonging to a user
  all(userId) {
    const sql = "SELECT * FROM questions WHERE userId = $1";
    return this.db.one(sql, userId);
  }
  //returns all questions
  allData() {
    const sql = "SELECT * FROM questions";
    return this.db.many(sql);
  }  
}
