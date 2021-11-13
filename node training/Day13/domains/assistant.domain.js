const AssistantModel = require("../models/assistant.model");

class AssistantDomain {
  //To get all assistant
  async getAllAssistant(req, res) {
    const assistant = await AssistantModel.find();
    res.send(assistant);
  }
  //To get assistant
  async getAssistant(req, res) {
    let id = req.params.AstId;
    const assistant = await AssistantModel.findById(id);
    if (assistant) {
      res.send(assistant);
    } else {
      res.status(404).send("Assistant Not Found");
    }
  }
  //To Insert assistant
  async insertAssistant(req, res) {
    //getting user input
    let data = req.body;

    const assistant = new AssistantModel(data);
    try {
      const result = await assistant.save();
      res.send(result);
    } catch (e) {
      res.send(e.message);
    }
  }
  //To delete a assistant
  async deleteAssistant(req, res) {
    let id = req.params.AstId;
    const assistant = await AssistantModel.findByIdAndDelete(id);
    if (assistant) {
      res.send("Assistant Record Deleted Successfully");
    } else {
      res.status(404).send("Data Not Found");
    }
  }
}

module.exports = AssistantDomain;
