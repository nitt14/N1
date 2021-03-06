React = require 'react'
_ = require 'underscore'
{RetinaImg, Flexbox} = require 'nylas-component-kit'

class PreferencesHeader extends React.Component
  @displayName: 'PreferencesHeader'

  @propTypes:
    tabs: React.PropTypes.array.isRequired
    changeActiveTab: React.PropTypes.func.isRequired
    activeTab: React.PropTypes.object

  render: =>
    <div className="preference-header">
      { @props.tabs.map (tab) =>
        classname = "preference-header-item"
        classname += " active" if tab is @props.activeTab

        <div className={classname} onClick={ => @props.changeActiveTab(tab) } key={tab.name}>
          <div className="phi-container">
            <div className="icon">
              <RetinaImg mode={RetinaImg.Mode.ContentPreserve} name={tab.icon} />
            </div>
            <div className="name">
              {tab.name}
            </div>
          </div>
        </div>
      }
    </div>


module.exports = PreferencesHeader
