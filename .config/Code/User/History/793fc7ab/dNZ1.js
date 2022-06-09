import React from 'react'
import ReactDOM from 'react-dom'
import './index.css'

class ShoppingList extends React.Component() {
    render() {
        return (
            <div className="shopping-list">
                <ul>
                    <li>A</li>
                    <li>B</li>
                    <li>C</li>
                </ul>
            </div>
        )
    }
}