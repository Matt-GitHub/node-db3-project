const db = require("../data/db-config");

function find() {
  return db("schemes");
}

function findById(id) {
  return db("schemes")
    .where({ id })
    .first();
}

function remove(id) {
  return db("schemes")
    .where({ id })
    .delete();
}

function update(changes, id) {
  return db("schemes")
    .update(changes)
    .where({ id });
}

function add(scheme) {
  return db("schemes").insert(scheme);
}

function findSteps(scheme_id) {
  return db("steps")
    .join("schemes", "schemes.id", "=", "steps.scheme_id")
    .select("schemes.scheme_name", "steps.step_number", "steps.instructions")
    .where({ scheme_id });
}

function addStep(step, scheme_id) {
  return db("steps")
    .insert(step)
    .where({ scheme_id });
}

module.exports = {
  find,
  findById,
  remove,
  update,
  add,
  findSteps,
  addStep
};
