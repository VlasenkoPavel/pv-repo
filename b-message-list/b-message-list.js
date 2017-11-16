/**
 * @namespace grt.lTest.bMessageList
 */

goog.module('grt.lTest.bMessageList.MessageList');

const Control = goog.require('cl.iControl.Control');
const View = goog.require('grt.lTest.bMessageList.View');
const Template = goog.require('grt.lTest.bMessageList.Template');
const factory = goog.require('grt.iFactory.Factory.INSTANCE');
const Localizer = goog.require('grt.Localizer');
const i18n = Localizer.getText;
const Message = goog.require('grt.lTest.bMessage.Message');

const NAME = Template.NAME();

/**
 * @param {String} DEFAULT_MESSAGE
 */
const DEFAULT_MESSAGE = 'no message';


/**
 * MessageList class
 */
class MessageList extends Control {
    /**
     * Control class
     * @param {grt.bTextDiv.View} view
     * @param {Object} opt_params
     */
    constructor(view, opt_params) {
        super(view, opt_params);

        /**
         * @protected
         * @type {{
         *     messages: Array<Message>
         * }}
         */
        this.children = {};

        this.lastValue_ = null;
    };

    /**
     * @override
     */
    initChildren() {
        this.children.messages = [];
    }

    /**
     * @override
     * @param {Element} element
     */
    decorateInternal(element) {
        super.decorateInternal(element);
    }

    /**
     * @override
     */
    enterDocument() {
        super.enterDocument();
    }

    /**
     * @param {String} message
     * @public
     */
    createNewMessage(message) {
        let messageControl = this.createMessageControl(message);

        this.children.messages.push(messageControl);

        this.placeNewMessageToDom(messageControl);
    }

    /**
     * @param {String} message
     * @return {Message}
     * @protected
     */
    createMessageControl(message) {
        return this.createChild(
            Message.NAME, {
                data: {
                    text: message || DEFAULT_MESSAGE
                }
            }
        );
    }

    /**
     * @param {Message} newMessage
     * @protected
     */
    placeNewMessageToDom(newMessage) {
        let messageWrapper = this.getView().createNewMessageWrapper();

        newMessage.render(messageWrapper);
    }
}

factory.register(NAME, {
    control: MessageList,
    view: View,
    template: Template.messageList
});

/**@constructor*/
exports = MessageList;

exports.NAME = NAME;
