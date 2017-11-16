/**
 * @namespace grt.lTest.bMessage
 */

goog.module('grt.lTest.bMessage.Message');

const Control = goog.require('cl.iControl.Control');
const View = goog.require('grt.lTest.bMessage.View');
const Template = goog.require('grt.lTest.bMessage.Template');
const factory = goog.require('grt.iFactory.Factory.INSTANCE');
const Localizer = goog.require('grt.Localizer');
const i18n = Localizer.getText;

const NAME = Template.NAME();

/**
 * Message class
 */
class Message extends Control {
    /**
     * Control class
     * @param {grt.lTest.bMessage.View} view
     * @param {Object} opt_params
     */
    constructor(view, opt_params) {
        super(view, opt_params);

        /**
         * @protected
         * @type {{
         *
         * }}
         */
        this.children = {};

        this.lastValue_ = null;
    };

    /**
     * @override
     */
    initChildren() {
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
}

factory.register(NAME, {
    control: Message,
    view: View,
    template: Template.message
});

/**@constructor*/
exports = Message;
exports.NAME = NAME;
