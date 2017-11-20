/**
 * @namespace grt.lTest.bMessageList
 */

goog.module('grt.lTest.bMessageList.View');

goog.require('goog.dom');
goog.require('cl.iControl.View');

/**
 * Css classes
 * @enum {string}
 */
const CssClass = {
    ROOT: 'b-message-list',
    MESSAGE: 'b-message-list__message-wrapper'
};

/**
 * MessageList view class
 */
class View extends cl.iControl.View {
    /**
     * @param {Object=} opt_params
     * @param {string=} opt_type
     * @param {String=} opt_modifier
     * @constructor
     */
    constructor(opt_params, opt_type, opt_modifier) {
        super(opt_params, opt_type, opt_modifier);
    };

    /**
     * @override
     * @param {Element} element
     */
    decorateInternal(element) {
        super.decorateInternal(element);

        this.setCssClass(CssClass.ROOT);
        this.getDom();
    };

    /**
     * @override
     */
    enterDocument() {
        super.enterDocument();
    };

    /**
     * @return {Element}
     * @public
     */
    createNewMessageWrapper() {
        let messageWrapper = goog.dom.createElement('div');

        goog.dom.classlist.add(
            messageWrapper,
            View.CssClass.MESSAGE
        );

        goog.dom.appendChild(this.getElement(), messageWrapper);

        return messageWrapper;
    }

}

/** @constructor */
exports = View;

exports.CssClass = CssClass;
