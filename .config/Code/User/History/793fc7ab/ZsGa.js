import React from 'react'
import ReactDOM from 'react-dom'
import './index.css'

class ShoppingList extends React.Component() {

    counter1 = 0;

    render() {
        return (
            <div className="shopping-list">
                <ul>
                    <li>{this.counter1}</li>
                    <li>B</li>
                    <li>C</li>
                </ul>
            </div>
        )
    }

    
}