public with sharing class PostCreatDummyJSONUserQueueable implements Queueable{
    
    Id contId = null;

    public PostCreatDummyJSONUserQueueable(Id contId) {
        this.contId = contId;
    }

    public void execute(QueueableContext context) {
        DummyJSONCallout.postCreateDummyJSONUser(contId);
    }
}