/**
 * @namespace grt.lTest.bMessage
 */

goog.module('grt.lTest.bMessage.View');

goog.require('goog.dom');
goog.require('cl.iControl.View');

/**
 * Css classes
 * @enum {string}
 */
const CssClass = {
    ROOT: 'b-message-list-message'
};

/**
 * Message view class
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
    };

    /**
     * @override
     */
    enterDocument() {
        super.enterDocument();
    };

}

/** @constructor */

exports = View;

exports.CssClass = CssClass;
